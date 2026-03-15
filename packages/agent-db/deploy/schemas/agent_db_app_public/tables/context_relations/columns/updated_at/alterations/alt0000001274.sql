-- Deploy: schemas/agent_db_app_public/tables/context_relations/columns/updated_at/alterations/alt0000001274
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/context_relations/table
-- requires: schemas/agent_db_app_public/tables/context_relations/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/context_relations/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.context_relations 
    ALTER COLUMN updated_at SET DEFAULT now();

