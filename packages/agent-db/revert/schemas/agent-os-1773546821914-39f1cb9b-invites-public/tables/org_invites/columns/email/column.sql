-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/email/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  DROP COLUMN email RESTRICT;


