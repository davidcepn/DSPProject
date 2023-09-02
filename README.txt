----------------------------------------------------------------------------------------------------
Escuela Politécnica Nacional
Doctorate in Electrical Engineering
Digital Signal Processing
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
Developed by: David Fabián Cevallos Salas
Date: 2023-08-15
----------------------------------------------------------------------------------------------------


This project includes the construction of classifiers using different machine learning algorithms.

The dataset used for this task is CIC-MalMem-2022, which has 55 features for malware classification.

The project first performs the t-SNE visualization of the data.

Secondly, it implements the binary classifier that allows to classify the observations between benign and malicious.

Subsequently, a 4-classes classifier is made that allows distinguishing between benign observations and malicious 
observations of the spyware, ransomware and trojan horse categories.

A SMOTE oversampling technique then is applied in order to compare the results among using this technique and not.

Finally, a 16-classes classifier is built in order to classify the observations between benign and 15 classes of malware.

In the same way, the SMOTE technique has been used to make a comparison of results.


In order to execute and visualize the research results, please follow the following instructions:

1. Open the Google Colab notebooks available in the following URLs:

- t-SNE Data Visualization: https://colab.research.google.com/drive/1nAuVKNDE3HGYJqGK2Z-fO65tDLT6tm9D
- Binary Classifier: https://colab.research.google.com/drive/1BGGmSSH_16FmCfO4X8mRNnBywC8ALrR7
- 4-classes Classifier: https://colab.research.google.com/drive/1V0gGcYostIEXSjB9LjYennpfXIc94-HW
- 16-classes Classifier: https://colab.research.google.com/drive/1aepia3yD8TPx5it_u7xvlj2KX6lmeMNx

2. At each notebook load at the /home path the dataset, that is the filename Obfuscated-MalMem2022.csv

3. Execute the notebooks and visualize the results on the screen.

4. In order to execute the digital image processing method of this research open the matlab filename 
DavidCevallos_DigitalImageProcessing.m and execute the script with the images contained in the folder "Images sample".
