-- Deploy: schemas/agentic_db_app_public/tables/company_events/indexes/company_events_company_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/tables/company_events/columns/company_id/column


CREATE INDEX company_events_company_id_idx ON "agentic_db_app_public".company_events USING BTREE ( company_id );

