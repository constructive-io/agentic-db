-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permission_defaults/grants/authenticated/insert/grant


REVOKE INSERT ON "agent-os-1773546821914-39f1cb9b-permissions-public".app_permission_defaults FROM authenticated;


