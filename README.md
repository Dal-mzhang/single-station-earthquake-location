Single station earthquake location through full waveform matching (demo code)

Please install SAC and F-K before you run this demo. GMT is required for plotting.

SAC: http://ds.iris.edu/ds/nodes/dmc/forms/sac/

F-K: http://www.eas.slu.edu/People/LZhu/home.html

GMT: https://www.generic-mapping-tools.org/download/

        
Step 1. use a three-layer velocity to simulate full waveforms of an earthquake (synthetic event as ground truth, dep=0.7 km) at a near station (dist=7.15 km)

bash runFK.sh

Step 2. use a inverted gradient velocity model to simualte full waveforms of an earthquake with different depths and a preliminary distance. How to invert a gradient velocity model? how to estimate the preliminary distance? Details can be found in Zhang et al., SRL, 2021.

bash runFK.sh

Step 3. waveform matching between the synthetic waveforms and simulated waveforms to determine the source depth and accurate distance

bash plot_fullwaveform.gmt5 # 3-15 hz

bash plot_body_dist_vertical.gmt5 # 5-15 hz


![FK_fullwaveform_0 7](https://user-images.githubusercontent.com/51533859/129449648-85cf2aa0-8bda-44b3-af5e-4d87485a1e5f.jpg)

![FK_bodywave_simulation_v](https://user-images.githubusercontent.com/51533859/129449649-47c549ff-6a84-4e21-88de-736fb1c275e7.jpg)


Reference: Zhang M., Liu M., Plourde A., Bao F., Wang R. and Gosse J.  Source characterization for two small earthquakes in Dartmouth, Nova Scotia, Canada: pushing the limit of single station. Seismological Research Letters, 2021, https://doi.org/10.1785/0220200297

Questions or comments? Email Miao Zhang (miao.zhang@dal.ca)

