CREATE TABLE prompt_templates (
    id                TEXT (32)      PRIMARY KEY,
    prompt            BLOB,
    negative_prompt   BLOB,
    temperature       NUMERIC (2, 2) NOT NULL,
    top_k             NUMERIC (2, 2) NOT NULL,
    top_p             NUMERIC (2, 2) NOT NULL,
    max_output_tokens INTEGER (8) DEFAULT (2048),
    notes             TEXT,
    header            TEXT (256),
    footer            TEXT (256),
    max_input_tokens  INTEGER (8),
    stop_sequences    BLOB,
    presense_penalty  NUMERIC (2, 2) DEFAULT (0),
    logit_bias        TEXT (2048),
    guardrail_prompt  BLOB
);

