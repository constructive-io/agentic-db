-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/alterations/alt0000005539
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/contacts/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.contacts 
    ALTER COLUMN updated_at SET DEFAULT now();

