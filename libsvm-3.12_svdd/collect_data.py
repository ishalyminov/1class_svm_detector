import sys
import re
import os

def mix_points(in_original, in_mixin):
    for mix_point in in_mixin:
        for orig_point in in_original:
            if points_equal(mix_point[1:], orig_point[1:]):
                orig_point[0] = mix_point[0]

def relabel_points(in_original, in_new_labels):
    for point, label in zip(in_original, in_new_labels):
        point[0] = label

def points_equal(in_a, in_b):
    return abs(max([float(a) - float(b) for a, b in zip(in_a, in_b)])) < 1e-6

def process_original_data(in_stream):
    processed_result = []
    for line in in_stream:
        # making line format proper for visualizing, not calculations
        line = re.sub(',', '\.', line)
        line_split = [term.split(':')[-1] for term in line.strip().split()]
        processed_result.append(line_split)
    return processed_result

def process_model_data(in_stream):
    processed_result = []
    for line in in_stream:
        line = re.sub(',', '\.', line)
        line_split = line.strip().split()
        if len(line_split) > 2:
            line_split_filtered = [term.split(':')[-1]  for term in line_split]
            line_split_filtered[0] = '4'
            processed_result.append(line_split_filtered)
    return processed_result

def process_prediction_data(in_stream):
    return ['1' if line.strip() == '1' else '2' for line in in_stream]

def write_original_data_file(in_original_data, out_stream):
    for line in in_original_data:
        print >>out_stream, '\t'.join(line[:-1]) + '\t' + line[-1]

def write_sv_data_file(in_original_data, in_model_data, out_stream):
    new_original_data = in_original_data[:]
    mix_points(new_original_data, in_model_data)
    for line in new_original_data:
        print >>out_stream, '\t'.join(line[:-1]) + '\t' + line[-1]

def write_prediction_data_file(in_original_data, in_prediction_data, out_stream):
    new_original_data = in_original_data[:]
    relabel_points(new_original_data, in_prediction_data)

    for line in new_original_data:
        print >>out_stream, '\t'.join(line[:-1]) + '\t' + line[-1]


if __name__ == '__main__':
    if len(sys.argv) < 4:
        exit('Usage: collect_data.py <original data file> <model file> <prediction file>')
    original_data = process_original_data(open(sys.argv[1]))
    model_data = process_model_data(open(sys.argv[2]))
    prediction_data = process_prediction_data(open(sys.argv[3]))
 
    write_original_data_file(original_data, open(os.path.basename(sys.argv[1]) + '.original', 'w'))
    write_sv_data_file(original_data, model_data, open(os.path.basename(sys.argv[1]) + '.sv', 'w'))
    write_prediction_data_file(original_data, prediction_data, open(os.path.basename(sys.argv[1]) + '.prediction', 'w'))

