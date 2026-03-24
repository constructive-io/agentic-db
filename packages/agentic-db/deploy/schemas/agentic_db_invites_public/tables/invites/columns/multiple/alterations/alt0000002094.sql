-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/multiple/alterations/alt0000002094
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/multiple/column



ALTER TABLE agentic_db_invites_public.invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;

