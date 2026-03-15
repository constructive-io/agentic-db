-- Deploy: schemas/agent_db_app_public/tables/ideas/columns/created_at/alterations/alt0000004648
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/ideas/policies/auth_del_entity_membership/policy



ALTER TABLE "agent_db_app_public".ideas 
    ALTER COLUMN created_at SET DEFAULT now();

