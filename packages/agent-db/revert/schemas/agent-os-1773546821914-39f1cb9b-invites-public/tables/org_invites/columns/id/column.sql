-- Revert: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/org_invites/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".org_invites 
  DROP COLUMN id RESTRICT;


