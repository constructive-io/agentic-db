-- Deploy: schemas/agent_db_app_public/tables/documents/columns/updated_at/alterations/alt0000001417
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/documents/policies/auth_del_entity_membership/policy



ALTER TABLE agent_db_app_public.documents 
    ALTER COLUMN updated_at SET DEFAULT now();

