-- Deploy: schemas/agentic_db_app_public/tables/session_archives/columns/updated_at/alterations/alt0000002251
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/session_archives/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".session_archives 
    ALTER COLUMN updated_at SET DEFAULT now();

