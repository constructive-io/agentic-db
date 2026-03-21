-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/created_at/alterations/alt0000003692
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.contacts 
  ALTER COLUMN created_at SET NOT NULL;

