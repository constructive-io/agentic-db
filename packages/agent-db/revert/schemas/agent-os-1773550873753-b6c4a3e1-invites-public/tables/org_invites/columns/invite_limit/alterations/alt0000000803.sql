-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/columns/invite_limit/alterations/alt0000000803


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


