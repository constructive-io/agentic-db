-- Deploy: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/lockout_duration/alterations/alt0000001522
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/table
-- requires: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/lockout_duration/column



ALTER TABLE "agentic_db_auth_private".app_auth_settings 
    ALTER COLUMN lockout_duration SET DEFAULT '15 minutes'::interval;

