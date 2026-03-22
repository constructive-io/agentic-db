-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/updated_at/alterations/alt0000001293
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".rule_chunks 
    ALTER COLUMN updated_at SET DEFAULT now();

