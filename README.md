# file_splitter

Input: A tab-separated file without header (see test_data_limma.tabular). The filename must be: input_file

Output 1: One separate tab-separated file for each line, with the filename contaning the line number and the first element of that line, separated by a dash.
Output 2: A tabular file named output_list, containing the filenames of the aforementioned output files.

Docker run format: docker run --rm -v "$(pwd)"/your/data/here:/data file_splitter
