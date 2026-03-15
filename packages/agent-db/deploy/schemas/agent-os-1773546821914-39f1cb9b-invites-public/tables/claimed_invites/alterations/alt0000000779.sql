-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/alterations/alt0000000779
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/claimed_invites/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".claimed_invites 
  DISABLE ROW LEVEL SECURITY;

