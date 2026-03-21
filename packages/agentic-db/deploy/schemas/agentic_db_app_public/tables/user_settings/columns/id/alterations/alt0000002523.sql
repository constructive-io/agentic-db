-- Deploy: schemas/agentic_db_app_public/tables/user_settings/columns/id/alterations/alt0000002523
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/user_settings/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/alterations/alt0000002520



ALTER TABLE "agentic_db_app_public".user_settings 
    ALTER COLUMN id SET DEFAULT uuidv7();

