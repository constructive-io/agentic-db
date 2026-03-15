-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/procedures/steps_required/procedure
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/table



CREATE FUNCTION "agent-os-1773550873753-b6c4a3e1-status-public".steps_required (
    vlevel text,
    vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS SETOF "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements
AS $CODEZ$
BEGIN
  RETURN QUERY
  SELECT 
      app_level_requirements.id,
      app_level_requirements.name,
      app_level_requirements.level,
      app_level_requirements.description,
      -1*(coalesce(app_achievements.count,0)-app_level_requirements.required_count) as required_count,
      app_level_requirements.priority,
      app_level_requirements.created_at,
      app_level_requirements.updated_at
    FROM
      "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
    FULL OUTER JOIN "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements ON (
      app_achievements.name = app_level_requirements.name
      AND app_achievements.actor_id = vrole_id
    )	
    JOIN "agent-os-1773550873753-b6c4a3e1-status-public".app_levels ON (app_level_requirements.level = app_levels.name)
  WHERE
    app_level_requirements.level = vlevel
    AND -1*(coalesce(app_achievements.count,0)-app_level_requirements.required_count) > 0
  ORDER BY priority ASC;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION "agent-os-1773550873753-b6c4a3e1-status-public".steps_required TO authenticated;

