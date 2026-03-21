-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/columns/created_at/alterations/alt0000001817
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/event_chunks/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".event_chunks 
    ALTER COLUMN created_at SET DEFAULT now();

