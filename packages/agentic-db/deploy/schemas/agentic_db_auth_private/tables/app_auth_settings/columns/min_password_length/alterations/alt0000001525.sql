-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/min_password_length/alterations/alt0000001525
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/min_password_length/column



ALTER TABLE "agentic_db_auth_private".app_auth_settings 
    ALTER COLUMN min_password_length SET DEFAULT 8;

