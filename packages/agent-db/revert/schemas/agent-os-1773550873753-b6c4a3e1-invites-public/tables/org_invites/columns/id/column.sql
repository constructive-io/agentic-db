-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
  DROP COLUMN id RESTRICT;


