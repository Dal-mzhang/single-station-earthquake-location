A demo showing how to use the F-K method to calculate full-waveform of earthquakes

1. synthetic earthquake

#use a three-layer velocity to generate full waveforms of an earthquake at a near station (dist=7.15)
bash runFK.sh

2. simulate earthquake 

#use a inverted gradient velocity model to generate full waveforms of an earthquake with different depths and a preliminary distance

#how to get the invited gradient velocity? how to estimate the preliminary distance? Details can be found in Zhang et al., SRL, 2021.

bash runFK.sh

3. waveform matching between the synthetic waveforms and simulated wavefroms to determine the source depth and accurate distance

bash plot_fullwaveform.gmt5 # 3-15 hz

bash plot_body_dist_vertical.gmt5 # 5-15 hz

Reference: Zhang M., Liu M., Plourde A., Bao F., Wang R. and Gosse J.  Source characterization for two small earthquakes in Dartmouth, Nova Scotia, Canada: pushing the limit of single station. Seismological Research Letters, 2021, https://doi.org/10.1785/0220200297

Questions or comments? Email Miao Zhang (miao.zhang@dal.ca)

