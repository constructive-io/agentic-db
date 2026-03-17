-- Deploy: schemas/agentic_db_app_public/tables/milestones/columns/created_at/alterations/alt0000001290
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/milestones/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".milestones 
    ALTER COLUMN created_at SET DEFAULT now();

