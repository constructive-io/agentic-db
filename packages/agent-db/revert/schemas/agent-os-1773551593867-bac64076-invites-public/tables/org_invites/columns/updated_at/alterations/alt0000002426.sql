-- Revert: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/updated_at/alterations/alt0000002426


ALTER TABLE "agent-os-1773551593867-bac64076-invites-public".org_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


