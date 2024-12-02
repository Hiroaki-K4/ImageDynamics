# ImageDynamics

<br></bar>

## How to prepare training dataset
We can create short video by running following command. `input_folder` means the folder where the videos you want to edit are located, `output_folder` means that the folder where the videos you want to save the processing result files.
The video is cropped in 5 seconds and the resolution is set to 1920*1080.

```bash
bash create_short_video.sh <input_folder> <output_folder>
```

<br></br>

## References
- [Generative Image Dynamics](https://openaccess.thecvf.com/content/CVPR2024/papers/Li_Generative_Image_Dynamics_CVPR_2024_paper.pdf)
