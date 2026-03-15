-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/org_invites/constraints/org_invites_sender_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".org_invites 
  DROP CONSTRAINT org_invites_sender_id_fkey;


