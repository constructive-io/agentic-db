-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/created_at/alterations/alt0000001114
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/agents/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".agents 
    ALTER COLUMN created_at SET DEFAULT now();

