-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/invite_limit/alterations/alt0000000803


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


