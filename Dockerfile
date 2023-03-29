FROM tensorflow/tensorflow:1.4.0

# RUN apt-get update && apt-get install -y --no-install-recommends \
#         cuda-10-0 \
#         libcudnn7=7.6.0.64-1+cuda10.0 \
#         libcudnn7-dev=7.6.0.64-1+cuda10.0 && \
#     rm -rf /var/lib/apt/lists/*

RUN pip install keras==2.1.5
RUN pip install setuptools_scm
RUN pip install scikit-build
RUN pip install SimpleITK==0.10.0
RUN pip install niftynet==0.2.0
RUN pip install pandas
RUN pip install numpy


# Copy the current directory contents into the container at /app
COPY . /

# Define the command to run your script
CMD ["python", "/train.py","config21/train_wt_ax.txt"]
