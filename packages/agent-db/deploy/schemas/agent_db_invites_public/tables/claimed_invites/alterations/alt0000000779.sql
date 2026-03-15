-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/alterations/alt0000000779
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


ALTER TABLE agent_db_invites_public.claimed_invites 
  DISABLE ROW LEVEL SECURITY;

