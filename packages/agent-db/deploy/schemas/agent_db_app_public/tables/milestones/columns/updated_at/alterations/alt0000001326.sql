-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/updated_at/alterations/alt0000001326
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/milestones/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.milestones 
    ALTER COLUMN updated_at SET DEFAULT now();

