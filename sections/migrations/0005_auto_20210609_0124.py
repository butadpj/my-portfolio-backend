# Generated by Django 3.1.8 on 2021-06-08 17:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('sections', '0004_techstack'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='project',
            options={'verbose_name_plural': 'Projects'},
        ),
        migrations.AlterField(
            model_name='techstack',
            name='project',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='stack_name', to='sections.project'),
        ),
    ]
