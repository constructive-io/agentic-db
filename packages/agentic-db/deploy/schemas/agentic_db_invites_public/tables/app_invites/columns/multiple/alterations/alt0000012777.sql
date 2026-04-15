-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/columns/multiple/alterations/alt0000012777
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/table
-- requires: schemas/agentic_db_invites_public/tables/app_invites/columns/multiple/column



ALTER TABLE agentic_db_invites_public.app_invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;

