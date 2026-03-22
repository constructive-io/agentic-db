-- Deploy: schemas/agentic_db_invites_public/tables/org_claimed_invites/alterations/alt0000001987
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table


ALTER TABLE agentic_db_invites_public.org_claimed_invites 
  DISABLE ROW LEVEL SECURITY;

