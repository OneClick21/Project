import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.models import load_model
import numpy as np
import streamlit as st
from PIL import Image
import os
import zipfile
import shutil


def ImgClassification(image, model):
    image_load = tf.keras.utils.load_img(image, target_size=(224, 224))
    img_arr = tf.keras.utils.array_to_img(image_load)
    img_batch = tf.expand_dims(img_arr, 0)
    image = Image.open(image)
    image = image.resize((224, 224))

    predict = model.predict(img_batch)
    score = tf.nn.softmax(predict)
    category = [
        "ABBOTTS BABBLER",
        "ABBOTTS BOOBY",
        "ABYSSINIAN GROUND HORNBILL",
        "AFRICAN CROWNED CRANE",
        "AFRICAN EMERALD CUCKOO",
        "AFRICAN FIREFINCH",
        "AFRICAN OYSTER CATCHER",
        "AFRICAN PIED HORNBILL",
        "AFRICAN PYGMY GOOSE",
        "ALBATROSS",
        "ALBERTS TOWHEE",
        "ALEXANDRINE PARAKEET",
        "ALPINE CHOUGH",
        "ALTAMIRA YELLOWTHROAT",
        "AMERICAN AVOCET",
        "AMERICAN BITTERN",
        "AMERICAN COOT",
        "AMERICAN FLAMINGO",
        "AMERICAN GOLDFINCH",
        "AMERICAN KESTREL",
    ]

    print(np.argmax(score))
    st.image(image)
    st.write(
        "This is {} with an accuracy of {:0.2f}%".format(
            category[np.argmax(score)], np.argmax(score) * 100
        )
    )


MobileNetV2 = load_model(r"Project\mobilenetv2.keras")
ResNet50 = load_model(r"Project\resnet50.keras")
DenseNet121 = load_model(r"Project\densenet121.keras")
Select = None

model_options = {"-Select-", "ResNet50", "DenseNet121", "MobileNetV2"}
uploadOption = {"Folder", "File"}

upload = st.selectbox("Select to apply", list(uploadOption))
st.title("Image Classification")


if upload == "Folder":

    uploaded_folder = st.file_uploader("Upload Image Folder (ZIP)", type=["zip"])
    if uploaded_folder != None:
        model = st.selectbox("Select model to apply", list(model_options))

        with st.spinner("Processing..."):

            with zipfile.ZipFile(uploaded_folder, "r") as zip_ref:
                zip_ref.extractall("temp_images")

            image_paths = [
                os.path.join("temp_images", f)
                for f in os.listdir("temp_images")
                if f.endswith((".jpg", ".jpeg", ".png"))
            ]

            if model != "-Select-":
                for img_path in image_paths:
                    ImgClassification(img_path, globals()[model])

            shutil.rmtree("temp_images")
else:
    image = st.file_uploader("Choose an image...", type=["jpg", "jpeg", "png"])
    if image != None:

        model = st.selectbox("Select model to apply", list(model_options))

        if model == "-Select-":
            st.write("Please select an option.")
        elif model == "ResNet50":
            st.write(f"You have selected {model}")
            ImgClassification(image, ResNet50)
        elif model == "MobileNetV2":
            st.write(f"You have selected {model}")
            ImgClassification(image, MobileNetV2)
        else:
            st.write(f"You have selected {model}")
            ImgClassification(image, DenseNet121)
