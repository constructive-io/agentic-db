-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/columns/created_at/alterations/alt0000002309
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".thread_chunks 
    ALTER COLUMN created_at SET DEFAULT now();

