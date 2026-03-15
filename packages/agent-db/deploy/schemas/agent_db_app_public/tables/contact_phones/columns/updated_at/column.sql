-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".contact_phones 
  ADD COLUMN updated_at timestamptz;

