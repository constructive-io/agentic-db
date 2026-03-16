-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/created_at/alterations/alt0000002142
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/milestones/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".milestones 
    ALTER COLUMN created_at SET DEFAULT now();

