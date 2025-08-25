
.PHONY: test api dash format export

test:
    python -m pytest -q

api:
    uvicorn src.neurovisionx.serving.api:app --reload --port 8080

dash:
    streamlit run src/neurovisionx/serving/dashboard.py

format:
    python -m pip install black && black src

export:
    python src/neurovisionx/pipelines/export.py --config src/neurovisionx/config/base.yaml
