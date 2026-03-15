-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/multiple/alterations/alt0000000809


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  ALTER COLUMN multiple DROP NOT NULL;


