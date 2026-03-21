-- Deploy: schemas/agentic_db_app_public/tables/chats/columns/updated_at/alterations/alt0000004126
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/chats/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.chats 
    ALTER COLUMN updated_at SET DEFAULT now();

