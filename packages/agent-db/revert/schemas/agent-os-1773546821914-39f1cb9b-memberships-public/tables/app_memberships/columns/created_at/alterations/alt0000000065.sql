-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/columns/created_at/alterations/alt0000000065


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


