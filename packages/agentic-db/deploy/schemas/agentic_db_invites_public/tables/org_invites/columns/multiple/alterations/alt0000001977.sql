-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/multiple/alterations/alt0000001977
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/multiple/column


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN multiple SET NOT NULL;

