-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/updated_at/alterations/alt0000000817


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


