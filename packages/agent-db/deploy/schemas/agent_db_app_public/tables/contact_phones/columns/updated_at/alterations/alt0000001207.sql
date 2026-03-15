-- Deploy: schemas/agent_db_app_public/tables/contact_phones/columns/updated_at/alterations/alt0000001207
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/contact_phones/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.contact_phones 
  ALTER COLUMN updated_at SET NOT NULL;

