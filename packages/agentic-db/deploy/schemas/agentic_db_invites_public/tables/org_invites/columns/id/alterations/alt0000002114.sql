-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/id/alterations/alt0000002114
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/id/column



ALTER TABLE agentic_db_invites_public.org_invites 
    ALTER COLUMN id SET DEFAULT uuidv7();

