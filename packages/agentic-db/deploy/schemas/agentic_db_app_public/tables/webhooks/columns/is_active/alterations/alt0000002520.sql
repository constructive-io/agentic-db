-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000002520
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/secret/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/column



ALTER TABLE "agentic_db_app_public".webhooks 
    ALTER COLUMN is_active SET DEFAULT true;

