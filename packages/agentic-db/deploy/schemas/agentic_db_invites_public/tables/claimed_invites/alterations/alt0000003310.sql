-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/alterations/alt0000003310
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table


ALTER TABLE agentic_db_invites_public.claimed_invites 
  DISABLE ROW LEVEL SECURITY;

