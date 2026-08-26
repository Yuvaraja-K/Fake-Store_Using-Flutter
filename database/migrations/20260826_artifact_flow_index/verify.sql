DO $$
BEGIN
  IF to_regclass('public.artifact_migration_flow_test_label_idx') IS NULL THEN
    RAISE EXCEPTION 'artifact_migration_flow_test_label_idx was not created';
  END IF;
END
$$;
