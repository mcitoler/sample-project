FROM python:3.7

WORKDIR /opt/work

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && rm -rf requirements.txt

# Setup some useful jupyter extensions
RUN jupyter contrib nbextension install --user \
    && jupyter nbextension enable codefolding/main \
    && jupyter nbextension enable collapsible_headings/main \
    && jupyter nbextension enable comment-uncomment/main \
    && jupyter nbextension enable execute_time/ExecuteTime \
    && jupyter nbextension enable toc2/main \
    && jupyter nbextension enable toggle_all_line_numbers/main

CMD ["jupyter", "notebook", \
    "--no-browser", "--allow-root", "--ip='0.0.0.0'", "--NotebookApp.token="]
