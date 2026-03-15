-- Deploy: schemas/agent_db_app_public/tables/deals/columns/updated_at/alterations/alt0000000882
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/deals/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.deals 
  ALTER COLUMN updated_at SET NOT NULL;

