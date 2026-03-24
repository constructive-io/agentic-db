-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/invite_valid/alterations/alt0000002084
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/invite_valid/column


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN invite_valid SET NOT NULL;

