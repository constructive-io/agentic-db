-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/updated_at/alterations/alt0000000817
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/updated_at/column


ALTER TABLE agent_db_invites_public.org_invites 
  ALTER COLUMN updated_at SET DEFAULT now();

