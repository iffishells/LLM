from transformers import pipeline, set_seed
from transformers import pipeline
from datasets import load_dataset,load_from_disk
import pandas as pd
import os
from datasets import DatasetDict


def summarizer(input_text):
    
    summarize = pipeline(
        task='summarization',
        model = 't5-small',
        min_length=20,
        max_length=40,
        truncation=True
    )

    output = summarize(input_text)
    return output