-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_preferred_model_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/indexes/agents_status_idx
-- requires: schemas/agentic_db_app_public/tables/agents/columns/preferred_model/column


CREATE INDEX agents_preferred_model_idx ON "agentic_db_app_public".agents USING BTREE ( preferred_model );

