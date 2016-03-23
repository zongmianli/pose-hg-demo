# Stacked Hourglass Networks for Human Pose Estimation (Demo Code)

This repository includes some basic Torch code for evaluation and visualization of our network output. A pretrained model is available on the project site at [www-personal.umich.edu/~alnewell/pose](http://www-personal.umich.edu/~alnewell/pose). Include it in the main directory of this repository to run the demo code.

In addition, if you download the full [MPII Human Pose dataset](human-pose.mpi-inf.mpg.de) and replace images/ you can generate full predictions on the validation and test sets.

To run this code you must have installed:

- [Torch7](https://github.com/torch/torch7)
- hdf5 (and the [torch-hdf5](https://github.com/deepmind/torch-hdf5/) package)
- cudnn
- qlua (for displaying results)

(If there are any other dependencies that I have (likely) forgotten, get in touch and I will list them here)

For displaying the demo images:
`qlua main.lua demo`

For generating predictions:
`th main.lua predict-[valid or test]`

For evaluation on a set of validation predictions:
`th main.lua eval` 